.class public final Lc/c/c/j;
.super Lc/c/c/m;
.source "HttpSessionBindingEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc/c/c/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lc/c/c/m;-><init>(Lc/c/c/g;)V

    .line 119
    iput-object p2, p0, Lc/c/c/j;->a:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>(Lc/c/c/g;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lc/c/c/m;-><init>(Lc/c/c/g;)V

    .line 142
    iput-object p2, p0, Lc/c/c/j;->a:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lc/c/c/j;->b:Ljava/lang/Object;

    .line 144
    return-void
.end method


# virtual methods
.method public final a()Lc/c/c/g;
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lc/c/c/m;->a()Lc/c/c/g;

    move-result-object v0

    return-object v0
.end method
