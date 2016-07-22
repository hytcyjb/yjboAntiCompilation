.class Landroid/support/v7/app/d$a$3;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/d$a;->b(Landroid/support/v7/app/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/d;

.field final synthetic b:Landroid/support/v7/app/d$a;


# direct methods
.method constructor <init>(Landroid/support/v7/app/d$a;Landroid/support/v7/app/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 955
    iput-object p1, p0, Landroid/support/v7/app/d$a$3;->b:Landroid/support/v7/app/d$a;

    iput-object p2, p0, Landroid/support/v7/app/d$a$3;->a:Landroid/support/v7/app/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Landroid/support/v7/app/d$a$3;->b:Landroid/support/v7/app/d$a;

    iget-object v0, v0, Landroid/support/v7/app/d$a;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Landroid/support/v7/app/d$a$3;->a:Landroid/support/v7/app/d;

    invoke-static {v1}, Landroid/support/v7/app/d;->g(Landroid/support/v7/app/d;)Landroid/support/v7/app/n;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 959
    iget-object v0, p0, Landroid/support/v7/app/d$a$3;->b:Landroid/support/v7/app/d$a;

    iget-boolean v0, v0, Landroid/support/v7/app/d$a;->E:Z

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Landroid/support/v7/app/d$a$3;->a:Landroid/support/v7/app/d;

    invoke-static {v0}, Landroid/support/v7/app/d;->g(Landroid/support/v7/app/d;)Landroid/support/v7/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/n;->dismiss()V

    .line 962
    :cond_0
    return-void
.end method
