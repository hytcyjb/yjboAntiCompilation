.class Landroid/support/v4/app/f$a;
.super Landroid/support/v4/app/f$b;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/f$b;-><init>(Landroid/support/v4/app/f$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/f$1;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {p1}, Landroid/support/v4/app/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
