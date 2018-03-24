.class final Lg/a/a/ad;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# static fields
.field static a:I

.field static b:I

.field static c:J

.field static d:J

.field static e:J

.field static f:J

.field static g:I

.field static h:J

.field static i:J

.field static j:J

.field static k:J

.field static l:J

.field static m:J

.field static n:J

.field static o:J

.field static p:J

.field static q:I

.field static r:J

.field static s:J

.field static t:J

.field static u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    .line 22
    const/16 v0, 0x2710

    sput v0, Lg/a/a/ad;->b:I

    .line 25
    const-wide/16 v0, 0x14

    sput-wide v0, Lg/a/a/ad;->c:J

    .line 26
    const-wide/16 v0, 0x3c

    sput-wide v0, Lg/a/a/ad;->d:J

    .line 27
    const-wide/16 v0, 0x12c

    sput-wide v0, Lg/a/a/ad;->e:J

    .line 28
    const-wide/16 v0, 0x78

    sput-wide v0, Lg/a/a/ad;->f:J

    .line 29
    const/16 v0, 0xc8

    sput v0, Lg/a/a/ad;->g:I

    .line 31
    sput-wide v2, Lg/a/a/ad;->h:J

    .line 32
    sput-wide v2, Lg/a/a/ad;->i:J

    .line 33
    sput-wide v2, Lg/a/a/ad;->j:J

    .line 35
    const-wide/32 v0, 0x10000

    sput-wide v0, Lg/a/a/ad;->k:J

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lg/a/a/ad;->u:Z

    .line 51
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.idleInterval"

    sget-wide v2, Lg/a/a/ad;->e:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    sput-wide v0, Lg/a/a/ad;->n:J

    .line 56
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "sun.net.httpserver.clockTick"

    sget v2, Lg/a/a/ad;->b:I

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lg/a/a/ad;->a:I

    .line 61
    new-instance v0, Lsun/security/action/GetIntegerAction;

    const-string v1, "sun.net.httpserver.maxIdleConnections"

    sget v2, Lg/a/a/ad;->g:I

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lg/a/a/ad;->q:I

    .line 66
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.readTimeout"

    sget-wide v2, Lg/a/a/ad;->c:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    sput-wide v0, Lg/a/a/ad;->l:J

    .line 71
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.selCacheTimeout"

    sget-wide v2, Lg/a/a/ad;->f:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    sput-wide v0, Lg/a/a/ad;->o:J

    .line 76
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.writeTimeout"

    sget-wide v2, Lg/a/a/ad;->d:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long/2addr v0, v4

    sput-wide v0, Lg/a/a/ad;->m:J

    .line 81
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.drainAmount"

    sget-wide v2, Lg/a/a/ad;->k:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lg/a/a/ad;->p:J

    .line 86
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.maxReqTime"

    sget-wide v2, Lg/a/a/ad;->h:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lg/a/a/ad;->r:J

    .line 91
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.maxRspTime"

    sget-wide v2, Lg/a/a/ad;->i:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lg/a/a/ad;->s:J

    .line 96
    new-instance v0, Lsun/security/action/GetLongAction;

    const-string v1, "sun.net.httpserver.timerMillis"

    sget-wide v2, Lg/a/a/ad;->j:J

    invoke-direct {v0, v1, v2, v3}, Lsun/security/action/GetLongAction;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lg/a/a/ad;->t:J

    .line 101
    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string v1, "sun.net.httpserver.debug"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lg/a/a/ad;->u:Z

    .line 104
    return-void
.end method

.method static a()J
    .locals 2

    .prologue
    .line 107
    sget-wide v0, Lg/a/a/ad;->l:J

    return-wide v0
.end method

.method static b()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lg/a/a/ad;->u:Z

    return v0
.end method

.method static c()J
    .locals 2

    .prologue
    .line 119
    sget-wide v0, Lg/a/a/ad;->n:J

    return-wide v0
.end method

.method static d()I
    .locals 1

    .prologue
    .line 123
    sget v0, Lg/a/a/ad;->a:I

    return v0
.end method

.method static e()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lg/a/a/ad;->q:I

    return v0
.end method

.method static f()J
    .locals 2

    .prologue
    .line 131
    sget-wide v0, Lg/a/a/ad;->m:J

    return-wide v0
.end method

.method static g()J
    .locals 2

    .prologue
    .line 135
    sget-wide v0, Lg/a/a/ad;->p:J

    return-wide v0
.end method

.method static h()J
    .locals 2

    .prologue
    .line 139
    sget-wide v0, Lg/a/a/ad;->r:J

    return-wide v0
.end method

.method static i()J
    .locals 2

    .prologue
    .line 143
    sget-wide v0, Lg/a/a/ad;->s:J

    return-wide v0
.end method

.method static j()J
    .locals 2

    .prologue
    .line 147
    sget-wide v0, Lg/a/a/ad;->t:J

    return-wide v0
.end method
