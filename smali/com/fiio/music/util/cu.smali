.class final Lcom/fiio/music/util/cu;
.super Ljava/lang/Object;
.source "ToastShortTimeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/util/ct;

.field private final synthetic b:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/fiio/music/util/ct;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/util/cu;->a:Lcom/fiio/music/util/ct;

    iput-object p2, p0, Lcom/fiio/music/util/cu;->b:Landroid/widget/Toast;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/fiio/music/util/cu;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 52
    return-void
.end method
