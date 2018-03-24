.class final Lcom/fiio/music/activity/gu;
.super Ljava/lang/Object;
.source "SkinSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/SkinSettingActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/SkinSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gu;->a:Lcom/fiio/music/activity/SkinSettingActivity;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fiio/music/activity/gu;->a:Lcom/fiio/music/activity/SkinSettingActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SkinSettingActivity;->a(Lcom/fiio/music/activity/SkinSettingActivity;)Lcom/fiio/music/adapter/ImageAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/adapter/ImageAdapter;->setCurrentId(I)V

    .line 47
    iget-object v0, p0, Lcom/fiio/music/activity/gu;->a:Lcom/fiio/music/activity/SkinSettingActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/SkinSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lcom/fiio/music/c/b;->c:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 49
    iget-object v0, p0, Lcom/fiio/music/activity/gu;->a:Lcom/fiio/music/activity/SkinSettingActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/SkinSettingActivity;->b(Lcom/fiio/music/activity/SkinSettingActivity;)Lcom/fiio/music/c/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/fiio/music/c/b;->a(I)V

    .line 50
    return-void
.end method
