.class Landroid/support/design/internal/NavigationMenuPresenter$e;
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
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/view/menu/h;


# direct methods
.method private constructor <init>(Landroid/support/v7/view/menu/h;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$e;->a:Landroid/support/v7/view/menu/h;

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/view/menu/h;Landroid/support/design/internal/NavigationMenuPresenter$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 606
    invoke-direct {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$e;-><init>(Landroid/support/v7/view/menu/h;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/h;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$e;->a:Landroid/support/v7/view/menu/h;

    return-object v0
.end method
