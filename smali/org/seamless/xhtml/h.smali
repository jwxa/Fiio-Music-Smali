.class final Lorg/seamless/xhtml/h;
.super Lorg/seamless/xml/NamespaceContextMap;
.source "XHTMLParser.java"


# instance fields
.field final synthetic a:Lorg/seamless/xhtml/XHTMLParser;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/XHTMLParser;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/seamless/xhtml/h;->a:Lorg/seamless/xhtml/XHTMLParser;

    invoke-direct {p0}, Lorg/seamless/xml/NamespaceContextMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getDefaultNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "http://www.w3.org/1999/xhtml"

    return-object v0
.end method
