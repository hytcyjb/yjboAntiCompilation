.class Lcom/facebook/cache/disk/a$a;
.super Ljava/lang/Object;
.source "DefaultDiskStorageSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/facebook/cache/disk/e;

.field public final b:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/facebook/cache/disk/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/facebook/cache/disk/a$a;->a:Lcom/facebook/cache/disk/e;

    .line 48
    iput-object p1, p0, Lcom/facebook/cache/disk/a$a;->b:Ljava/io/File;

    .line 49
    return-void
.end method
