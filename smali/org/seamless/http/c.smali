.class final Lorg/seamless/http/c;
.super Ljava/lang/Object;
.source "HttpFetch.java"

# interfaces
.implements Lorg/seamless/http/HttpFetch$RepresentationFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRepresentation(Ljava/net/URLConnection;Ljava/io/InputStream;)Lorg/seamless/http/Representation;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lorg/seamless/http/Representation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/seamless/http/Representation;-><init>(Ljava/net/URLConnection;Ljava/lang/Object;)V

    return-object v0
.end method
