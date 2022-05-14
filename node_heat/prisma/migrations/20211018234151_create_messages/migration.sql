-- CreateTable
CREATE TABLE "messages" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "text" TEXT NOT NULL,
    "created_at" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "users_id" TEXT NOT NULL,
    CONSTRAINT "messages_users_id_fkey" FOREIGN KEY ("users_id") REFERENCES "users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
