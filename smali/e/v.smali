.class public interface abstract Le/v;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final a:Le/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Le/w;

    invoke-direct {v0}, Le/w;-><init>()V

    sput-object v0, Le/v;->a:Le/v;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
