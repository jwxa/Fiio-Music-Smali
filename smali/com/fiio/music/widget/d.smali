.class final Lcom/fiio/music/widget/d;
.super Ljava/lang/Object;
.source "DragGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/DragGridView;


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/DragGridView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v0}, Lcom/fiio/music/widget/DragGridView;->a(Lcom/fiio/music/widget/DragGridView;)V

    .line 152
    iget-object v0, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v0}, Lcom/fiio/music/widget/DragGridView;->b(Lcom/fiio/music/widget/DragGridView;)V

    .line 153
    iget-object v0, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v0}, Lcom/fiio/music/widget/DragGridView;->c(Lcom/fiio/music/widget/DragGridView;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 155
    iget-object v0, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v0}, Lcom/fiio/music/widget/DragGridView;->d(Lcom/fiio/music/widget/DragGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    iget-object v1, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v1}, Lcom/fiio/music/widget/DragGridView;->e(Lcom/fiio/music/widget/DragGridView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v2}, Lcom/fiio/music/widget/DragGridView;->f(Lcom/fiio/music/widget/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/fiio/music/widget/d;->a:Lcom/fiio/music/widget/DragGridView;

    invoke-static {v3}, Lcom/fiio/music/widget/DragGridView;->g(Lcom/fiio/music/widget/DragGridView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/fiio/music/widget/DragGridView;->a(Lcom/fiio/music/widget/DragGridView;Landroid/graphics/Bitmap;II)V

    .line 159
    return-void
.end method
