package quixotic

import io.getquill.context.ZioJdbc.DataSourceLayer
import io.getquill.{PostgresZioJdbcContext, SnakeCase}
import zio.{Has, ULayer}

import javax.sql.DataSource

object QuillContext extends PostgresZioJdbcContext(SnakeCase) {
  val dataSourceLayer: ULayer[Has[DataSource]] =
    DataSourceLayer.fromPrefix("database").orDie
}
