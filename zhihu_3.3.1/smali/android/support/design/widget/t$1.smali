.class Landroid/support/design/widget/t$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/t$e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/t;->a(Landroid/support/design/widget/t$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/t$c;

.field final synthetic b:Landroid/support/design/widget/t;


# direct methods
.method constructor <init>(Landroid/support/design/widget/t;Landroid/support/design/widget/t$c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Landroid/support/design/widget/t$1;->b:Landroid/support/design/widget/t;

    iput-object p2, p0, Landroid/support/design/widget/t$1;->a:Landroid/support/design/widget/t$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/design/widget/t$1;->a:Landroid/support/design/widget/t$c;

    iget-object v1, p0, Landroid/support/design/widget/t$1;->b:Landroid/support/design/widget/t;

    invoke-interface {v0, v1}, Landroid/support/design/widget/t$c;->a(Landroid/support/design/widget/t;)V

    .line 134
    return-void
.end method
