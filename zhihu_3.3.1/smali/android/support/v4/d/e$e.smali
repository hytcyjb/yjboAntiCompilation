.class Landroid/support/v4/d/e$e;
.super Landroid/support/v4/d/e$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Landroid/support/v4/d/e$c;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/support/v4/d/e$d;-><init>(Landroid/support/v4/d/e$c;)V

    .line 157
    iput-boolean p2, p0, Landroid/support/v4/d/e$e;->a:Z

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/d/e$c;ZLandroid/support/v4/d/e$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/support/v4/d/e$e;-><init>(Landroid/support/v4/d/e$c;Z)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/support/v4/d/e$e;->a:Z

    return v0
.end method
