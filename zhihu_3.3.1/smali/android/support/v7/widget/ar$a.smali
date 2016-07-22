.class Landroid/support/v7/widget/ar$a;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static d:Landroid/support/v4/e/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/h$a",
            "<",
            "Landroid/support/v7/widget/ar$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/RecyclerView$e$c;

.field c:Landroid/support/v7/widget/RecyclerView$e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Landroid/support/v4/e/h$b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/e/h$b;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/ar$a;->d:Landroid/support/v4/e/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    return-void
.end method

.method static a()Landroid/support/v7/widget/ar$a;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Landroid/support/v7/widget/ar$a;->d:Landroid/support/v4/e/h$a;

    invoke-interface {v0}, Landroid/support/v4/e/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ar$a;

    .line 310
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/ar$a;

    invoke-direct {v0}, Landroid/support/v7/widget/ar$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroid/support/v7/widget/ar$a;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ar$a;->a:I

    .line 315
    iput-object v1, p0, Landroid/support/v7/widget/ar$a;->b:Landroid/support/v7/widget/RecyclerView$e$c;

    .line 316
    iput-object v1, p0, Landroid/support/v7/widget/ar$a;->c:Landroid/support/v7/widget/RecyclerView$e$c;

    .line 317
    sget-object v0, Landroid/support/v7/widget/ar$a;->d:Landroid/support/v4/e/h$a;

    invoke-interface {v0, p0}, Landroid/support/v4/e/h$a;->a(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method static b()V
    .locals 1

    .prologue
    .line 322
    :cond_0
    sget-object v0, Landroid/support/v7/widget/ar$a;->d:Landroid/support/v4/e/h$a;

    invoke-interface {v0}, Landroid/support/v4/e/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    return-void
.end method
