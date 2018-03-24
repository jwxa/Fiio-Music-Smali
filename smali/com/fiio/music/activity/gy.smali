.class final Lcom/fiio/music/activity/gy;
.super Ljava/lang/Object;
.source "UserExperienceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/UserExperienceActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/UserExperienceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-object v0, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->a(Lcom/fiio/music/activity/UserExperienceActivity;)I

    move-result v0

    sget v1, Lcom/fiio/music/activity/UserExperienceActivity;->b:I

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->b(Lcom/fiio/music/activity/UserExperienceActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UserSelect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->finish()V

    .line 89
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->a(Lcom/fiio/music/activity/UserExperienceActivity;)I

    move-result v0

    sget v1, Lcom/fiio/music/activity/UserExperienceActivity;->a:I

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->b(Lcom/fiio/music/activity/UserExperienceActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    const-class v2, Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/fiio/music/activity/gy;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-virtual {v1, v0}, Lcom/fiio/music/activity/UserExperienceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
