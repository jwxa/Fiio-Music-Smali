.class public Lcom/audlabs/vipereffect/util/StaticEnvironment;
.super Ljava/lang/Object;
.source "StaticEnvironment.java"


# static fields
.field private static sEnvironmentInitialized:Z

.field private static sExternalStoragePath:Ljava/lang/String;

.field private static sV4aCustomDDCPath:Ljava/lang/String;

.field private static sV4aKernelPath:Ljava/lang/String;

.field private static sV4aProfilePath:Ljava/lang/String;

.field private static sV4aRoot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkWritable(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    const/16 v1, 0x10

    :try_start_0
    new-array v1, v1, [B

    .line 32
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 34
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 35
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    const-string v2, "ViPEREffect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileNotFoundException, msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :catch_1
    move-exception v1

    .line 43
    const-string v2, "ViPEREffect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException, msg = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getStorages(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 153
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    .line 154
    const-class v4, Landroid/os/storage/StorageManager;

    const-string v5, "getVolumePaths"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 155
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 156
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 157
    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    check-cast v0, [Ljava/lang/String;

    .line 159
    array-length v4, v0

    :goto_0
    if-lt v1, v4, :cond_0

    .line 172
    :goto_1
    return-object v3

    .line 159
    :cond_0
    aget-object v2, v0, v1

    .line 160
    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "v4a_test_file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    const-string v6, "ViPEREffect"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Now checking for external storage writable, file = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v5}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->checkWritable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_2

    .line 170
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getV4aCustomDDCPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getV4aKernelPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getV4aProfilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getV4aRootPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    return-object v0
.end method

.method public static initEnvironment(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 181
    :try_start_0
    invoke-static {p0}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->proceedExternalStoragePath(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sEnvironmentInitialized:Z

    .line 201
    invoke-static {}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->getV4aKernelPath()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 205
    const-string v0, "ViPER4Android"

    const-string v2, "Kernel directory does not exists"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 210
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    const-string v2, ".irs"

    invoke-static {v1, v2, v0}, Lcom/audlabs/vipereffect/util/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 212
    const-string v2, ".wav"

    invoke-static {v1, v2, v0}, Lcom/audlabs/vipereffect/util/Utils;->getFileNameList(Ljava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "Kernel"

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/audlabs/vipereffect/util/AssetsUtils;->releaseAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 184
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 185
    const-string v1, "/emulated/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    const-string v1, "/emulated/0/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    :cond_1
    const-string v1, "/emulated/0"

    .line 188
    const-string v2, "/emulated/legacy"

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ViPEREffect/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Kernel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DDC/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 192
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 208
    :cond_4
    const-string v0, "ViPER4Android"

    const-string v2, "Kernel directory exists"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static isEnvironmentInitialized()Z
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sEnvironmentInitialized:Z

    return v0
.end method

.method private static proceedExternalStoragePath(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 49
    .line 50
    const-string v0, "com.audlabs.vipereffect.settings"

    .line 49
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    const-string v1, ""

    const-string v3, "viper4android.settings.default_storage"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "viper4android.settings.default_storage"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ViPEREffect/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Kernel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DDC/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "v4a_test_file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "ViPEREffect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now checking for external storage writable, file = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v0}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->checkWritable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 73
    const-string v1, "/emulated/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    const-string v1, "/emulated/0/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    :cond_1
    const-string v1, "/emulated/0"

    .line 76
    const-string v2, "/emulated/legacy"

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ViPEREffect/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Kernel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DDC/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 80
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_4
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 91
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "v4a_test_file"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    const-string v3, "ViPEREffect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Now checking for external storage writable, file = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v1}, Lcom/audlabs/vipereffect/util/StaticEnvironment;->checkWritable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 95
    const/4 v1, 0x1

    .line 124
    :goto_3
    if-eqz v1, :cond_7

    .line 125
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_4
    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ViPEREffect/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Kernel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DDC/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    .line 131
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "External storage path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViPEREffect root path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViPEREffect kernel path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViPEREffect custom DDC path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, "ViPEREffect"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViPEREffect profile path = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 126
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 139
    :cond_7
    const-string v1, "ViPEREffect"

    const-string v2, "Really terrible thing, external storage detection failed. V4A may malfunction"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sExternalStoragePath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ViPEREffect/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Kernel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aKernelPath:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DDC/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aCustomDDCPath:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aRoot:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audlabs/vipereffect/util/StaticEnvironment;->sV4aProfilePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move v1, v2

    goto/16 :goto_3
.end method
