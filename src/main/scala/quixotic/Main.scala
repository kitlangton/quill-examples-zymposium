package quixotic

import zio._
import zio.console.putStrLn
import QuillContext._
import io.getquill.{EntityQuery, Quoted}
import quixotic.model._
import zio.macros.accessible
import zio.magic._

import java.sql.SQLException
import javax.sql.DataSource

case class VampireResearch(suspiciousAge: Int)

@accessible
trait DataService {
  def getVampiresWithAddresses: IO[SQLException, List[(Person, Address, Address)]]

  def getVampires: IO[SQLException, List[Person]]
}

object DataService {
  val live = (DataServiceLive.apply _).toLayer[DataService]
}

final case class DataServiceLive(
    dataSource: DataSource,
    vampireResearch: VampireResearch
) extends DataService {
  val env = Has(dataSource)

  def getVampiresWithAddresses: IO[SQLException, List[(Person, Address, Address)]] =
    run {
      for {
        vampire  <- Queries.personsOlderThan(lift(vampireResearch.suspiciousAge))
        address  <- query[Address].join(address => address.ownerFk == vampire.id)
        address2 <- query[Address].join(address => address.ownerFk == vampire.id)
      } yield (vampire, address, address2)
    }.provide(env)

  def getVampires: IO[SQLException, List[Person]] =
    run {
      Queries.personsOlderThan(lift(vampireResearch.suspiciousAge))
    }.provide(env)
}

object Main extends App {
  override def run(args: List[String]): URIO[zio.ZEnv, ExitCode] =
    DataService.getVampiresWithAddresses
      .inject(
        dataSourceLayer,
        DataService.live,
        ZLayer.succeed(VampireResearch(40))
      )
      .debug("Results")
      .exitCode
}
