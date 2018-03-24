.class final Lorg/seamless/xml/d;
.super Ljava/util/HashMap;
.source "SAXParser.java"


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
.field final synthetic a:Lorg/seamless/xml/SAXParser;


# direct methods
.method constructor <init>(Lorg/seamless/xml/SAXParser;)V
    .locals 2

    .prologue
    .line 87
    iput-object p1, p0, Lorg/seamless/xml/d;->a:Lorg/seamless/xml/SAXParser;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 88
    sget-object v0, Lorg/seamless/xml/SAXParser;->XML_SCHEMA_NAMESPACE:Ljava/net/URI;

    sget-object v1, Lorg/seamless/xml/SAXParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    invoke-virtual {p0, v0, v1}, Lorg/seamless/xml/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method
