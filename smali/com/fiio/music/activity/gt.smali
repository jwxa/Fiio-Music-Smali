.class final Lcom/fiio/music/activity/gt;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/SettingActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gt;->a:Lcom/fiio/music/activity/SettingActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0341

    if-ne v0, v1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/fiio/music/activity/gt;->a:Lcom/fiio/music/activity/SettingActivity;

    iget v0, v0, Lcom/fiio/music/activity/SettingActivity;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fiio/music/activity/gt;->a:Lcom/fiio/music/activity/SettingActivity;

    iget-object v1, p0, Lcom/fiio/music/activity/gt;->a:Lcom/fiio/music/activity/SettingActivity;

    iget v1, v1, Lcom/fiio/music/activity/SettingActivity;->e:I

    invoke-virtual {v0, v1}, Lcom/fiio/music/activity/SettingActivity;->setResult(I)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/activity/gt;->a:Lcom/fiio/music/activity/SettingActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/SettingActivity;->finish()V

    .line 41
    :cond_1
    return-void
.end method
