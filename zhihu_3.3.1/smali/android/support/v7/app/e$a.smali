.class public Landroid/support/v7/app/e$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/app/d$a;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/app/e;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/e$a;-><init>(Landroid/content/Context;I)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    new-instance v0, Landroid/support/v7/app/d$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Landroid/support/v7/app/e;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/app/d$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    .line 298
    iput p2, p0, Landroid/support/v7/app/e$a;->b:I

    .line 299
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v0, v0, Landroid/support/v7/app/d$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/d$a;->f:Ljava/lang/CharSequence;

    .line 321
    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/d$a;->i:Ljava/lang/CharSequence;

    .line 416
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p2, v0, Landroid/support/v7/app/d$a;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 417
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->q:Landroid/content/DialogInterface$OnDismissListener;

    .line 521
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 531
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->d:Landroid/graphics/drawable/Drawable;

    .line 388
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->g:Landroid/view/View;

    .line 346
    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->t:Landroid/widget/ListAdapter;

    .line 571
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p2, v0, Landroid/support/v7/app/d$a;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 572
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->f:Ljava/lang/CharSequence;

    .line 331
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->i:Ljava/lang/CharSequence;

    .line 429
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p2, v0, Landroid/support/v7/app/d$a;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 430
    return-object p0
.end method

.method public a(Z)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-boolean p1, v0, Landroid/support/v7/app/d$a;->o:Z

    .line 492
    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->s:[Ljava/lang/CharSequence;

    .line 762
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p3, v0, Landroid/support/v7/app/d$a;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 763
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput p2, v0, Landroid/support/v7/app/d$a;->F:I

    .line 764
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/d$a;->E:Z

    .line 765
    return-object p0
.end method

.method public b(I)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/d$a;->h:Ljava/lang/CharSequence;

    .line 356
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/d$a;->k:Ljava/lang/CharSequence;

    .line 442
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p2, v0, Landroid/support/v7/app/d$a;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 443
    return-object p0
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->w:Landroid/view/View;

    .line 831
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput v1, v0, Landroid/support/v7/app/d$a;->v:I

    .line 832
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-boolean v1, v0, Landroid/support/v7/app/d$a;->B:Z

    .line 833
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->h:Ljava/lang/CharSequence;

    .line 366
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->k:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p2, v0, Landroid/support/v7/app/d$a;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 456
    return-object p0
.end method

.method public b()Landroid/support/v7/app/e;
    .locals 4

    .prologue
    .line 898
    new-instance v0, Landroid/support/v7/app/e;

    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/app/e$a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/app/e;-><init>(Landroid/content/Context;IZ)V

    .line 899
    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    invoke-static {v0}, Landroid/support/v7/app/e;->a(Landroid/support/v7/app/e;)Landroid/support/v7/app/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/d$a;->a(Landroid/support/v7/app/d;)V

    .line 900
    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-boolean v1, v1, Landroid/support/v7/app/d$a;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e;->setCancelable(Z)V

    .line 901
    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-boolean v1, v1, Landroid/support/v7/app/d$a;->o:Z

    if-eqz v1, :cond_0

    .line 902
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e;->setCanceledOnTouchOutside(Z)V

    .line 904
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 905
    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 906
    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 907
    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/e;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 909
    :cond_1
    return-object v0
.end method

.method public c(I)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/app/d$a;->w:Landroid/view/View;

    .line 817
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput p1, v0, Landroid/support/v7/app/d$a;->v:I

    .line 818
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/app/d$a;->B:Z

    .line 819
    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iget-object v1, v1, Landroid/support/v7/app/d$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/app/d$a;->m:Ljava/lang/CharSequence;

    .line 468
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p2, v0, Landroid/support/v7/app/d$a;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 469
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/e$a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p1, v0, Landroid/support/v7/app/d$a;->m:Ljava/lang/CharSequence;

    .line 481
    iget-object v0, p0, Landroid/support/v7/app/e$a;->a:Landroid/support/v7/app/d$a;

    iput-object p2, v0, Landroid/support/v7/app/d$a;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 482
    return-object p0
.end method

.method public c()Landroid/support/v7/app/e;
    .locals 1

    .prologue
    .line 917
    invoke-virtual {p0}, Landroid/support/v7/app/e$a;->b()Landroid/support/v7/app/e;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Landroid/support/v7/app/e;->show()V

    .line 919
    return-object v0
.end method
