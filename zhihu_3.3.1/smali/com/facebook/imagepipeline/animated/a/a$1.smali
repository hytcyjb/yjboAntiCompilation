.class Lcom/facebook/imagepipeline/animated/a/a$1;
.super Ljava/lang/Object;
.source "AnimatedDrawableFactory.java"

# interfaces
.implements Lcom/facebook/common/time/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/animated/a/a;-><init>(Lcom/facebook/imagepipeline/animated/impl/b;Lcom/facebook/imagepipeline/animated/impl/d;Lcom/facebook/imagepipeline/animated/b/a;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/animated/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/animated/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/a/a$1;->a:Lcom/facebook/imagepipeline/animated/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
