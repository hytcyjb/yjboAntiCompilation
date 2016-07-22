.class Landroid/support/v7/app/m$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/widget/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/m;->t()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/m;


# direct methods
.method constructor <init>(Landroid/support/v7/app/m;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Landroid/support/v7/app/m$3;->a:Landroid/support/v7/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Landroid/support/v7/app/m$3;->a:Landroid/support/v7/app/m;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Landroid/support/v7/app/m;->c(Landroid/support/v7/app/m;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 437
    return-void
.end method
