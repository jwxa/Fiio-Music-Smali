.class final Lcom/fiio/music/widget/p;
.super Ljava/lang/Thread;
.source "StickyLayout.java"


# instance fields
.field final synthetic a:Lcom/fiio/music/widget/StickyLayout;

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:I

.field private final synthetic e:F

.field private final synthetic f:Z


# direct methods
.method constructor <init>(Lcom/fiio/music/widget/StickyLayout;Ljava/lang/String;IIF)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/widget/p;->a:Lcom/fiio/music/widget/StickyLayout;

    const/16 v0, 0x10

    iput v0, p0, Lcom/fiio/music/widget/p;->b:I

    iput p3, p0, Lcom/fiio/music/widget/p;->c:I

    iput p4, p0, Lcom/fiio/music/widget/p;->d:I

    iput p5, p0, Lcom/fiio/music/widget/p;->e:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiio/music/widget/p;->f:Z

    .line 229
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/fiio/music/widget/p;)Lcom/fiio/music/widget/StickyLayout;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/fiio/music/widget/p;->a:Lcom/fiio/music/widget/StickyLayout;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 233
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/fiio/music/widget/p;->b:I

    if-lt v0, v1, :cond_1

    .line 252
    iget-boolean v0, p0, Lcom/fiio/music/widget/p;->f:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fiio/music/widget/p;->a:Lcom/fiio/music/widget/StickyLayout;

    iget v1, p0, Lcom/fiio/music/widget/p;->c:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/widget/StickyLayout;->setOriginalHeaderHeight(I)V

    .line 255
    :cond_0
    return-void

    .line 235
    :cond_1
    iget v1, p0, Lcom/fiio/music/widget/p;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 236
    iget v1, p0, Lcom/fiio/music/widget/p;->c:I

    .line 240
    :goto_1
    iget-object v2, p0, Lcom/fiio/music/widget/p;->a:Lcom/fiio/music/widget/StickyLayout;

    new-instance v3, Lcom/fiio/music/widget/q;

    invoke-direct {v3, p0, v1}, Lcom/fiio/music/widget/q;-><init>(Lcom/fiio/music/widget/p;I)V

    invoke-virtual {v2, v3}, Lcom/fiio/music/widget/StickyLayout;->post(Ljava/lang/Runnable;)Z

    .line 246
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Lcom/fiio/music/widget/p;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_2
    iget v1, p0, Lcom/fiio/music/widget/p;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/fiio/music/widget/p;->e:F

    int-to-float v3, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 248
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
