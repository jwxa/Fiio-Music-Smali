.class public abstract Lorg/seamless/util/dbunit/DBUnitOperations;
.super Ljava/util/ArrayList;
.source "DBUnitOperations.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/seamless/util/dbunit/DBUnitOperations$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/seamless/util/dbunit/DBUnitOperations;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/seamless/util/dbunit/DBUnitOperations;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    return-void
.end method


# virtual methods
.method protected abstract disableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
.end method

.method protected editConfig(Lorg/dbunit/database/DatabaseConfig;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method protected abstract enableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
.end method

.method public execute()V
    .locals 6

    .prologue
    .line 142
    sget-object v0, Lorg/seamless/util/dbunit/DBUnitOperations;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing DBUnit operations: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;->getConnection()Lorg/dbunit/database/IDatabaseConnection;

    move-result-object v1

    .line 146
    invoke-virtual {p0, v1}, Lorg/seamless/util/dbunit/DBUnitOperations;->disableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V

    .line 147
    invoke-virtual {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/dbunit/DBUnitOperations$Op;

    .line 148
    invoke-virtual {v0, v1}, Lorg/seamless/util/dbunit/DBUnitOperations$Op;->execute(Lorg/dbunit/database/IDatabaseConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 154
    :try_start_1
    invoke-interface {v1}, Lorg/dbunit/database/IDatabaseConnection;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :cond_0
    :goto_1
    throw v0

    .line 150
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/seamless/util/dbunit/DBUnitOperations;->enableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    if-eqz v1, :cond_2

    .line 154
    :try_start_3
    invoke-interface {v1}, Lorg/dbunit/database/IDatabaseConnection;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 160
    :cond_2
    :goto_2
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lorg/seamless/util/dbunit/DBUnitOperations;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to close connection after DBUnit operation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 155
    :catch_1
    move-exception v1

    .line 156
    sget-object v2, Lorg/seamless/util/dbunit/DBUnitOperations;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to close connection after DBUnit operation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected getConnection()Lorg/dbunit/database/IDatabaseConnection;
    .locals 2

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 174
    new-instance v1, Lorg/dbunit/database/DatabaseConnection;

    invoke-direct {v1, v0}, Lorg/dbunit/database/DatabaseConnection;-><init>(Ljava/sql/Connection;)V

    .line 175
    invoke-interface {v1}, Lorg/dbunit/database/IDatabaseConnection;->getConfig()Lorg/dbunit/database/DatabaseConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/util/dbunit/DBUnitOperations;->editConfig(Lorg/dbunit/database/DatabaseConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getDataSource()Ljavax/sql/DataSource;
.end method
