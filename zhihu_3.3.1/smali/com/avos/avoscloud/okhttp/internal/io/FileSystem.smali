.class public interface abstract Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final SYSTEM:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/avos/avoscloud/okhttp/internal/io/FileSystem;

    return-void
.end method


# virtual methods
.method public abstract appendingSink(Ljava/io/File;)Lcom/avos/avoscloud/okio/Sink;
.end method

.method public abstract delete(Ljava/io/File;)V
.end method

.method public abstract deleteContents(Ljava/io/File;)V
.end method

.method public abstract exists(Ljava/io/File;)Z
.end method

.method public abstract rename(Ljava/io/File;Ljava/io/File;)V
.end method

.method public abstract sink(Ljava/io/File;)Lcom/avos/avoscloud/okio/Sink;
.end method

.method public abstract size(Ljava/io/File;)J
.end method

.method public abstract source(Ljava/io/File;)Lcom/avos/avoscloud/okio/Source;
.end method
