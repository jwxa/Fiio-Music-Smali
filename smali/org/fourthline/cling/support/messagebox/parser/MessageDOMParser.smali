.class public Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;
.super Lorg/seamless/xml/DOMParser;
.source "MessageDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/seamless/xml/DOMParser",
        "<",
        "Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/seamless/xml/DOMParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDOM(Lorg/w3c/dom/Document;)Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    invoke-direct {v0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;-><init>(Lorg/w3c/dom/Document;)V

    return-object v0
.end method

.method protected bridge synthetic createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/fourthline/cling/support/messagebox/parser/MessageDOM;

    move-result-object v0

    return-object v0
.end method

.method public varargs createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;
    .locals 5

    .prologue
    .line 35
    new-instance v1, Lorg/fourthline/cling/support/messagebox/parser/a;

    invoke-direct {v1, p0}, Lorg/fourthline/cling/support/messagebox/parser/a;-><init>(Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;)V

    .line 41
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 44
    return-object v1

    .line 41
    :cond_0
    aget-object v3, p1, v0

    .line 42
    const-string v4, "urn:samsung-com:messagebox-1-0"

    invoke-virtual {v1, v3, v4}, Lorg/seamless/xml/NamespaceContextMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createXPath()Ljavax/xml/xpath/XPath;
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "m"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/messagebox/parser/MessageDOMParser;->createDefaultNamespaceContext([Ljava/lang/String;)Lorg/seamless/xml/NamespaceContextMap;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/seamless/xml/DOMParser;->createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;

    move-result-object v0

    return-object v0
.end method
