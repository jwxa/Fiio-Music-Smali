.class public abstract Lorg/seamless/xml/DOMElement$ArrayBuilder;
.super Lorg/seamless/xml/DOMElement$Builder;
.source "DOMElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/seamless/xml/DOMElement;",
        ">",
        "Lorg/seamless/xml/DOMElement",
        "<TCHI",
        "LD;",
        "TPARENT;>.Builder<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/seamless/xml/DOMElement;


# direct methods
.method protected constructor <init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lorg/seamless/xml/DOMElement$ArrayBuilder;->this$0:Lorg/seamless/xml/DOMElement;

    .line 290
    invoke-direct {p0, p1, p2}, Lorg/seamless/xml/DOMElement$Builder;-><init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V

    .line 291
    return-void
.end method


# virtual methods
.method protected buildArray([Lorg/seamless/xml/DOMElement;)[Lorg/seamless/xml/DOMElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/seamless/xml/DOMElement;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 304
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->newChildrenArray(I)[Lorg/seamless/xml/DOMElement;

    move-result-object v1

    .line 305
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 306
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v2

    aput-object v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-object v1
.end method

.method public getChildElements()[Lorg/seamless/xml/DOMElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lorg/seamless/xml/DOMElement$ArrayBuilder;->element:Lorg/seamless/xml/DOMElement;

    invoke-virtual {v0}, Lorg/seamless/xml/DOMElement;->getChildren()[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->buildArray([Lorg/seamless/xml/DOMElement;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public getChildElements(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lorg/seamless/xml/DOMElement$ArrayBuilder;->element:Lorg/seamless/xml/DOMElement;

    invoke-virtual {v0, p1}, Lorg/seamless/xml/DOMElement;->getChildren(Ljava/lang/String;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMElement$ArrayBuilder;->buildArray([Lorg/seamless/xml/DOMElement;)[Lorg/seamless/xml/DOMElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract newChildrenArray(I)[Lorg/seamless/xml/DOMElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method
