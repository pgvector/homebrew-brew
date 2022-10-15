class Pgvector < Formula
  desc "Open-source vector similarity search for Postgres"
  homepage "https://github.com/pgvector/pgvector"
  url "https://github.com/pgvector/pgvector/archive/v0.3.0.tar.gz"
  sha256 "67a60e045622d4ca5ed5b2b42e3f12f67fe3d6f861c9fdefc5161bf434ad19e2"
  license "PostgreSQL"

  depends_on "postgresql@14"

  def install
    system "make"

    mkdir "stage"
    system "make", "install", "DESTDIR=#{buildpath}/stage"

    lib.install Dir["stage/**/lib/*"]
  end

  test do
  end
end
