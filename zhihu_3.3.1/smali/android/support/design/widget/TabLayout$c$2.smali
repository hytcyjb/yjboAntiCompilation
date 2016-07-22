.class Landroid/support/design/widget/TabLayout$c$2;
.super Landroid/support/design/widget/t$b;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$c;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/TabLayout$c;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$c;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1843
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$c$2;->b:Landroid/support/design/widget/TabLayout$c;

    iput p2, p0, Landroid/support/design/widget/TabLayout$c$2;->a:I

    invoke-direct {p0}, Landroid/support/design/widget/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/t;)V
    .locals 2
    .parameter

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c$2;->b:Landroid/support/design/widget/TabLayout$c;

    iget v1, p0, Landroid/support/design/widget/TabLayout$c$2;->a:I

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$c;->a(Landroid/support/design/widget/TabLayout$c;I)I

    .line 1847
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$c$2;->b:Landroid/support/design/widget/TabLayout$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$c;->a(Landroid/support/design/widget/TabLayout$c;F)F

    .line 1848
    return-void
.end method
