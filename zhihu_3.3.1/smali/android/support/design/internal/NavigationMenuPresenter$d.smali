.class Landroid/support/design/internal/NavigationMenuPresenter$d;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/NavigationMenuPresenter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$d;->a:I

    .line 631
    iput p2, p0, Landroid/support/design/internal/NavigationMenuPresenter$d;->b:I

    .line 632
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$d;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$d;->b:I

    return v0
.end method
