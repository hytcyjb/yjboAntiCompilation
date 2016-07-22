.class Landroid/support/v4/app/h$1;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/u$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/h;->a(ILandroid/support/v4/app/h$b;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/support/v4/app/h;


# direct methods
.method constructor <init>(Landroid/support/v4/app/h;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1217
    iput-object p1, p0, Landroid/support/v4/app/h$1;->b:Landroid/support/v4/app/h;

    iput-object p2, p0, Landroid/support/v4/app/h$1;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/support/v4/app/h$1;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
