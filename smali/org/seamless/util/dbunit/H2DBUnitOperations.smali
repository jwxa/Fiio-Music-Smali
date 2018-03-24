.class public abstract Lorg/seamless/util/dbunit/H2DBUnitOperations;
.super Lorg/seamless/util/dbunit/DBUnitOperations;
.source "H2DBUnitOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/seamless/util/dbunit/DBUnitOperations;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 2

    .prologue
    .line 33
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    const-string v1, "set referential_integrity FALSE"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected editConfig(Lorg/dbunit/database/DatabaseConfig;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/seamless/util/dbunit/DBUnitOperations;->editConfig(Lorg/dbunit/database/DatabaseConfig;)V

    .line 54
    const-string v0, "http://www.dbunit.org/properties/datatypeFactory"

    new-instance v1, Lorg/seamless/util/dbunit/a;

    invoke-direct {v1, p0}, Lorg/seamless/util/dbunit/a;-><init>(Lorg/seamless/util/dbunit/H2DBUnitOperations;)V

    invoke-virtual {p1, v0, v1}, Lorg/dbunit/database/DatabaseConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method protected enableReferentialIntegrity(Lorg/dbunit/database/IDatabaseConnection;)V
    .locals 2

    .prologue
    .line 42
    :try_start_0
    invoke-interface {p1}, Lorg/dbunit/database/IDatabaseConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    const-string v1, "set referential_integrity TRUE"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
