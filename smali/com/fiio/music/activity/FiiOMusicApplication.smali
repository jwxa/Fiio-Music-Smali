.class public Lcom/fiio/music/activity/FiiOMusicApplication;
.super Landroid/app/Application;
.source "FiiOMusicApplication.java"


# static fields
.field public static a:Lcom/fiio/music/d/a/d;

.field public static b:Z

.field public static c:Lorg/fourthline/cling/android/AndroidUpnpService;

.field public static d:Landroid/content/Context;

.field private static final e:Ljava/lang/String;

.field private static f:Ljava/net/InetAddress;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/fiio/music/service/MediaPlayerService;

.field private static j:I


# instance fields
.field private k:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/fiio/music/activity/FiiOMusicApplication;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->e:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fiio/music/activity/FiiOMusicApplication;->b:Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 145
    sput p0, Lcom/fiio/music/activity/FiiOMusicApplication;->j:I

    .line 146
    return-void
.end method

.method public static a(Lcom/fiio/music/service/MediaPlayerService;)V
    .locals 0

    .prologue
    .line 138
    sput-object p0, Lcom/fiio/music/activity/FiiOMusicApplication;->i:Lcom/fiio/music/service/MediaPlayerService;

    .line 139
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    sput-object p0, Lcom/fiio/music/activity/FiiOMusicApplication;->g:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public static a(Ljava/net/InetAddress;)V
    .locals 0

    .prologue
    .line 114
    sput-object p0, Lcom/fiio/music/activity/FiiOMusicApplication;->f:Ljava/net/InetAddress;

    .line 116
    return-void
.end method

.method public static b()Lcom/fiio/music/service/MediaPlayerService;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->i:Lcom/fiio/music/service/MediaPlayerService;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 135
    sput-object p0, Lcom/fiio/music/activity/FiiOMusicApplication;->h:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 148
    sget v0, Lcom/fiio/music/activity/FiiOMusicApplication;->j:I

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 97
    invoke-virtual {p0}, Lcom/fiio/music/activity/FiiOMusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/fiio/music/activity/FiiOMusicApplication;->d:Landroid/content/Context;

    .line 98
    invoke-virtual {p0}, Lcom/fiio/music/activity/FiiOMusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "imageloader/Cache"

    invoke-static {v0, v1}, Lcom/b/a/c/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/b/a/b/i;

    invoke-direct {v2, v0}, Lcom/b/a/b/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/b/a/b/i;->a()Lcom/b/a/b/i;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/b/a/b/i;->a(I)Lcom/b/a/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/i;->b()Lcom/b/a/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/i;->c()Lcom/b/a/b/i;

    move-result-object v2

    new-instance v3, Lcom/b/a/a/a/b/c;

    invoke-direct {v3}, Lcom/b/a/a/a/b/c;-><init>()V

    invoke-virtual {v2, v3}, Lcom/b/a/b/i;->a(Lcom/b/a/a/a/b/a;)Lcom/b/a/b/i;

    move-result-object v2

    new-instance v3, Lcom/b/a/a/b/a/c;

    invoke-direct {v3}, Lcom/b/a/a/b/a/c;-><init>()V

    invoke-virtual {v2, v3}, Lcom/b/a/b/i;->a(Lcom/b/a/a/b/c;)Lcom/b/a/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/i;->d()Lcom/b/a/b/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/a/b/i;->e()Lcom/b/a/b/i;

    move-result-object v2

    sget-object v3, Lcom/b/a/b/a/h;->b:Lcom/b/a/b/a/h;

    invoke-virtual {v2, v3}, Lcom/b/a/b/i;->a(Lcom/b/a/b/a/h;)Lcom/b/a/b/i;

    move-result-object v2

    new-instance v3, Lcom/b/a/a/a/a/b;

    invoke-direct {v3, v1}, Lcom/b/a/a/a/a/b;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/b/a/b/i;->a(Lcom/b/a/a/a/a;)Lcom/b/a/b/i;

    move-result-object v1

    new-instance v2, Lcom/b/a/b/d/a;

    const/16 v3, 0x7530

    invoke-direct {v2, v0, v3}, Lcom/b/a/b/d/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/b/a/b/i;->a(Lcom/b/a/b/d/b;)Lcom/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/b/i;->f()Lcom/b/a/b/h;

    move-result-object v0

    invoke-static {}, Lcom/b/a/b/f;->a()Lcom/b/a/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/b/f;->a(Lcom/b/a/b/h;)V

    .line 99
    invoke-static {}, Lcom/fiio/music/util/az;->a()Lcom/fiio/music/util/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/util/az;->b()V

    .line 100
    invoke-static {}, Lcom/fiio/music/a/a;->a()Lcom/fiio/music/a/a;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/fiio/music/activity/FiiOMusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fiio/music/a/a;->a(Landroid/content/Context;)V

    .line 104
    const-string v0, "UserExperience"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fiio/music/activity/FiiOMusicApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fiio/music/activity/FiiOMusicApplication;->k:Landroid/content/SharedPreferences;

    .line 107
    return-void
.end method
