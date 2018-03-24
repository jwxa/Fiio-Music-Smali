.class final Lcom/audlabs/vipereffect/screen/f;
.super Ljava/lang/Object;
.source "ConvolverFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const v5, 0x7f0c0172

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "ViPER4Android"

    const-string v1, "External storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->getV4aKernelPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->getV4aKernelPath()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    const-string v0, "ViPER4Android"

    const-string v2, "Kernel directory does not exists"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$7(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/util/ArrayList;)V

    .line 160
    const-string v0, ".irs"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/audlabs/vipereffect/util/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 161
    const-string v0, ".wav"

    iget-object v2, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v2}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/audlabs/vipereffect/util/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->getV4aKernelPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-virtual {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "ViPER4Android"

    const-string v2, "Kernel directory exists"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v0}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$8(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 171
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlMain:Landroid/widget/ScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlSearch:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$9(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iget-object v0, v0, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->mLayoutConvolverKnlSearch:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    iget-object v1, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    invoke-static {v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$4(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "vipereffect.headphonefx.convolver.kernel"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$10(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/f;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$6(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
