.class final Landroid/databinding/m$4;
.super Landroid/databinding/b$a;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/databinding/b$a",
        "<",
        "Landroid/databinding/k;",
        "Landroid/databinding/m;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/databinding/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/databinding/k;Landroid/databinding/m;ILjava/lang/Void;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    packed-switch p3, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_0
    invoke-virtual {p1, p2}, Landroid/databinding/k;->a(Landroid/databinding/m;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroid/databinding/m;->a(Landroid/databinding/m;Z)Z

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual {p1, p2}, Landroid/databinding/k;->b(Landroid/databinding/m;)V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/databinding/k;->c(Landroid/databinding/m;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    check-cast p1, Landroid/databinding/k;

    check-cast p2, Landroid/databinding/m;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/databinding/m$4;->a(Landroid/databinding/k;Landroid/databinding/m;ILjava/lang/Void;)V

    return-void
.end method
