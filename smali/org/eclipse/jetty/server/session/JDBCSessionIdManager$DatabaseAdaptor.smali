.class public Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;
.super Ljava/lang/Object;
.source "JDBCSessionIdManager.java"


# instance fields
.field _dbName:Ljava/lang/String;

.field _isLower:Z

.field _isUpper:Z

.field final synthetic this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;Ljava/sql/DatabaseMetaData;)V
    .locals 5

    .prologue
    .line 127
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    .line 129
    sget-object v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Using database {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesLowerCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    .line 131
    invoke-interface {p2}, Ljava/sql/DatabaseMetaData;->storesUpperCaseIdentifiers()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    .line 132
    return-void
.end method


# virtual methods
.method public convertIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isLower:Z

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_0
    :goto_0
    return-object p1

    .line 145
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_isUpper:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getBlobInputStream(Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "postgres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 184
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 188
    :goto_0
    return-object v0

    .line 187
    :cond_0
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getBlob(Ljava/lang/String;)Ljava/sql/Blob;

    move-result-object v0

    .line 188
    invoke-interface {v0}, Ljava/sql/Blob;->getBinaryStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getBlobType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_blobType:Ljava/lang/String;

    .line 164
    :goto_0
    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "postgres"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "bytea"

    goto :goto_0

    .line 164
    :cond_1
    const-string v0, "blob"

    goto :goto_0
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadStatement(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 212
    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->isEmptyStringNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v1, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where sessionId = ? and contextPath is null and virtualHost = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 218
    invoke-interface {v0, v2, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 219
    invoke-interface {v0, v3, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 233
    :goto_0
    return-object v0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select * from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v1, v1, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_sessionTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where sessionId = ? and contextPath = ? and virtualHost = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 229
    invoke-interface {v0, v2, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 230
    invoke-interface {v0, v3, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 231
    const/4 v1, 0x3

    invoke-interface {v0, v1, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getLongType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->this$0:Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;

    iget-object v0, v0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager;->_longType:Ljava/lang/String;

    .line 175
    :goto_0
    return-object v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "number(20)"

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "bigint"

    goto :goto_0
.end method

.method public getRowIdColumnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "srowId"

    .line 200
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "rowId"

    goto :goto_0
.end method

.method public isEmptyStringNull()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/JDBCSessionIdManager$DatabaseAdaptor;->_dbName:Ljava/lang/String;

    const-string v1, "oracle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
