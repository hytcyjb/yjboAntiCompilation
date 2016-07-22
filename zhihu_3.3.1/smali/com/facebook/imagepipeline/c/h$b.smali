.class Lcom/facebook/imagepipeline/c/h$b;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final b:Lcom/facebook/common/references/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/a",
            "<TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Z

.field public final e:Lcom/facebook/imagepipeline/c/h$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/h$c",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/c/h$c;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/a",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/h$c",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/h$b;->a:Ljava/lang/Object;

    .line 83
    invoke-static {p2}, Lcom/facebook/common/references/a;->b(Lcom/facebook/common/references/a;)Lcom/facebook/common/references/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/a;

    iput-object v0, p0, Lcom/facebook/imagepipeline/c/h$b;->b:Lcom/facebook/common/references/a;

    .line 84
    iput v1, p0, Lcom/facebook/imagepipeline/c/h$b;->c:I

    .line 85
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/c/h$b;->d:Z

    .line 86
    iput-object p3, p0, Lcom/facebook/imagepipeline/c/h$b;->e:Lcom/facebook/imagepipeline/c/h$c;

    .line 87
    return-void
.end method

.method static a(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/c/h$c;)Lcom/facebook/imagepipeline/c/h$b;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/facebook/common/references/a",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/c/h$c",
            "<TK;>;)",
            "Lcom/facebook/imagepipeline/c/h$b",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/facebook/imagepipeline/c/h$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/c/h$b;-><init>(Ljava/lang/Object;Lcom/facebook/common/references/a;Lcom/facebook/imagepipeline/c/h$c;)V

    return-object v0
.end method
