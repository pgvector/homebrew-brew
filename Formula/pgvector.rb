class Pgvector < Formula
  desc "Open-source vector similarity search for Postgres"
  homepage "https://github.com/pgvector/pgvector"
  url "https://github.com/pgvector/pgvector/archive/v0.2.4.tar.gz"
  sha256 "0e74a320b2390b83eba2d8e2f02c71b06cb50329f8d8f82bf02bdb9b82c4df85"
  license "PostgreSQL"

  depends_on "postgresql"

  def install
    system "make"

    mkdir "stage"
    system "make", "install", "DESTDIR=#{buildpath}/stage"

    lib.install Dir["stage/**/lib/*"]
  end

  test do
  end
end
