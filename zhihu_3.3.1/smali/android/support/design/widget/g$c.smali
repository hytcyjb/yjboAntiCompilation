.class Landroid/support/design/widget/g$c;
.super Landroid/support/design/widget/g$a;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Landroid/support/design/widget/g;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/g;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Landroid/support/design/widget/g$c;->b:Landroid/support/design/widget/g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/g$a;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    invoke-direct {p0, p1}, Landroid/support/design/widget/g$c;-><init>(Landroid/support/design/widget/g;)V

    return-void
.end method


# virtual methods
.method protected a()F
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/design/widget/g$c;->b:Landroid/support/design/widget/g;

    iget v0, v0, Landroid/support/design/widget/g;->f:F

    return v0
.end method
