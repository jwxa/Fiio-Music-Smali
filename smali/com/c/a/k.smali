.class public interface abstract Lcom/c/a/k;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final a:Lcom/c/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/c/a/l;

    invoke-direct {v0}, Lcom/c/a/l;-><init>()V

    sput-object v0, Lcom/c/a/k;->a:Lcom/c/a/k;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract b()I
.end method
