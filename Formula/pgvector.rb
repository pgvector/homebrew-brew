class Pgvector < Formula
  desc "Open-source vector similarity search for Postgres"
  homepage "https://github.com/pgvector/pgvector"
  url "https://github.com/pgvector/pgvector/archive/v0.2.7.tar.gz"
  sha256 "d22439cb40b9cb28323aa38521a2fc807f08a86daf05d36f08bcf45b5f1b7221"
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
