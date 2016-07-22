.class public Landroid/support/v4/view/a/e$l;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Landroid/support/v4/view/a/e$l;->a:Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public static a(IIIIZZ)Landroid/support/v4/view/a/e$l;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 423
    new-instance v7, Landroid/support/v4/view/a/e$l;

    invoke-static {}, Landroid/support/v4/view/a/e;->w()Landroid/support/v4/view/a/e$e;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/a/e$e;->a(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/support/v4/view/a/e$l;-><init>(Ljava/lang/Object;)V

    return-object v7
.end method

.method static synthetic a(Landroid/support/v4/view/a/e$l;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v4/view/a/e$l;->a:Ljava/lang/Object;

    return-object v0
.end method
