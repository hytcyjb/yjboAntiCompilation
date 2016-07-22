.class final Landroid/databinding/g$1;
.super Landroid/databinding/b$a;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/b$a",
        "<",
        "Landroid/databinding/i$a;",
        "Landroid/databinding/i;",
        "Landroid/databinding/g$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/databinding/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/databinding/i$a;Landroid/databinding/i;ILandroid/databinding/g$a;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    packed-switch p3, :pswitch_data_0

    .line 57
    invoke-virtual {p1, p2}, Landroid/databinding/i$a;->a(Landroid/databinding/i;)V

    .line 60
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget v0, p4, Landroid/databinding/g$a;->a:I

    iget v1, p4, Landroid/databinding/g$a;->b:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/databinding/i$a;->a(Landroid/databinding/i;II)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget v0, p4, Landroid/databinding/g$a;->a:I

    iget v1, p4, Landroid/databinding/g$a;->b:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/databinding/i$a;->b(Landroid/databinding/i;II)V

    goto :goto_0

    .line 50
    :pswitch_2
    iget v0, p4, Landroid/databinding/g$a;->a:I

    iget v1, p4, Landroid/databinding/g$a;->c:I

    iget v2, p4, Landroid/databinding/g$a;->b:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/databinding/i$a;->a(Landroid/databinding/i;III)V

    goto :goto_0

    .line 54
    :pswitch_3
    iget v0, p4, Landroid/databinding/g$a;->a:I

    iget v1, p4, Landroid/databinding/g$a;->b:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/databinding/i$a;->c(Landroid/databinding/i;II)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Landroid/databinding/i$a;

    check-cast p2, Landroid/databinding/i;

    check-cast p4, Landroid/databinding/g$a;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/databinding/g$1;->a(Landroid/databinding/i$a;Landroid/databinding/i;ILandroid/databinding/g$a;)V

    return-void
.end method
