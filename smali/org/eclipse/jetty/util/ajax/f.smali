.class final Lorg/eclipse/jetty/util/ajax/f;
.super Ljava/lang/Object;
.source "JSONPojoConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSONPojoConvertor$NumberType;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActualValue(Ljava/lang/Number;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 406
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p1, v0

    goto :goto_0
.end method
