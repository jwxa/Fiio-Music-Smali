.class final Lorg/seamless/xml/b;
.super Ljava/util/HashMap;
.source "DOMParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/net/URI;",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/seamless/xml/DOMParser;


# direct methods
.method constructor <init>(Lorg/seamless/xml/DOMParser;)V
    .locals 2

    .prologue
    .line 99
    iput-object p1, p0, Lorg/seamless/xml/b;->a:Lorg/seamless/xml/DOMParser;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 100
    sget-object v0, Lorg/seamless/xml/DOM;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    sget-object v1, Lorg/seamless/xml/DOMParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    invoke-virtual {p0, v0, v1}, Lorg/seamless/xml/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method
