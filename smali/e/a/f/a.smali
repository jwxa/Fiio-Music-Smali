.class public interface abstract Le/a/f/a;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final a:Le/a/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Le/a/f/b;

    invoke-direct {v0}, Le/a/f/b;-><init>()V

    sput-object v0, Le/a/f/a;->a:Le/a/f/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
.end method
