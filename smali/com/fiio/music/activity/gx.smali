.class final Lcom/fiio/music/activity/gx;
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
    iput-object p1, p0, Lcom/fiio/music/activity/gx;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/fiio/music/activity/gx;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->a(Lcom/fiio/music/activity/UserExperienceActivity;)I

    move-result v0

    sget v1, Lcom/fiio/music/activity/UserExperienceActivity;->b:I

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/fiio/music/activity/gx;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->b(Lcom/fiio/music/activity/UserExperienceActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UserSelect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fiio/music/activity/gx;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->finish()V

    .line 74
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/activity/gx;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->a(Lcom/fiio/music/activity/UserExperienceActivity;)I

    move-result v0

    sget v1, Lcom/fiio/music/activity/UserExperienceActivity;->a:I

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/fiio/music/activity/gx;->a:Lcom/fiio/music/activity/UserExperienceActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/UserExperienceActivity;->b(Lcom/fiio/music/activity/UserExperienceActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "vipper"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
