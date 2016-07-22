.class public Landroid/support/v4/view/a/e$k;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Landroid/support/v4/view/a/e$k;->a:Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public static a(IIZI)Landroid/support/v4/view/a/e$k;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    new-instance v0, Landroid/support/v4/view/a/e$k;

    invoke-static {}, Landroid/support/v4/view/a/e;->w()Landroid/support/v4/view/a/e$e;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/support/v4/view/a/e$e;->a(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/e$k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
