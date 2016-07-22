.class public Landroid/support/v4/app/l;
.super Landroid/support/v4/app/j;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/a$a;
.implements Landroid/support/v4/app/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/l$a;,
        Landroid/support/v4/app/l$b;
    }
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/support/v4/app/n;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:I

.field k:Z

.field l:Landroid/support/v4/e/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/j",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    .line 97
    new-instance v0, Landroid/support/v4/app/l$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l$1;-><init>(Landroid/support/v4/app/l;)V

    iput-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    .line 116
    new-instance v0, Landroid/support/v4/app/l$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/l$a;-><init>(Landroid/support/v4/app/l;)V

    invoke-static {v0}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/o;)Landroid/support/v4/app/n;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    .line 970
    return-void
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    .line 699
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 700
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 708
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x45

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x48

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 714
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x43

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x53

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x50

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 730
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 731
    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 734
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 737
    const/high16 v0, -0x100

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_1

    .line 745
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 750
    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_1
    :goto_b
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 705
    :sswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 706
    :sswitch_1
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 707
    :sswitch_2
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 710
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 711
    goto/16 :goto_2

    .line 712
    :cond_4
    const/16 v0, 0x44

    goto/16 :goto_3

    :cond_5
    move v0, v2

    .line 713
    goto/16 :goto_4

    :cond_6
    move v0, v2

    .line 714
    goto/16 :goto_5

    :cond_7
    move v0, v2

    .line 715
    goto/16 :goto_6

    :cond_8
    move v0, v2

    .line 716
    goto/16 :goto_7

    :cond_9
    move v1, v2

    .line 718
    goto/16 :goto_8

    :cond_a
    move v0, v2

    .line 719
    goto/16 :goto_9

    .line 739
    :sswitch_3
    :try_start_1
    const-string v0, "app"

    goto :goto_a

    .line 742
    :sswitch_4
    const-string v0, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    .line 756
    :catch_0
    move-exception v0

    goto :goto_b

    .line 704
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 737
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 958
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 959
    invoke-static {p0, p2, p3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 968
    :goto_0
    return-void

    .line 962
    :cond_0
    and-int/lit16 v0, p3, -0x100

    if-eqz v0, :cond_1

    .line 963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 8 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->i:Z

    .line 966
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p3, 0xff

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/app/l;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/l;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 765
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    if-nez p3, :cond_1

    .line 767
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    :cond_0
    return-void

    .line 770
    :cond_1
    invoke-static {p3}, Landroid/support/v4/app/l;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 774
    check-cast p3, Landroid/view/ViewGroup;

    .line 775
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 776
    if-lez v1, :cond_0

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 780
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 781
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 780
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/app/Fragment;)I
    .locals 4
    .parameter

    .prologue
    const v3, 0xfffe

    .line 935
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    iget v1, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->g(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 941
    iget v0, p0, Landroid/support/v4/app/l;->j:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/support/v4/app/l;->j:I

    goto :goto_0

    .line 945
    :cond_1
    iget v0, p0, Landroid/support/v4/app/l;->j:I

    .line 946
    iget-object v1, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/e/j;->b(ILjava/lang/Object;)V

    .line 947
    iget v1, p0, Landroid/support/v4/app/l;->j:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/app/l;->j:I

    .line 950
    return v0
.end method


# virtual methods
.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->k:Z

    .line 917
    if-ne p3, v1, :cond_0

    .line 918
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    iput-boolean v2, p0, Landroid/support/v4/app/l;->k:Z

    .line 930
    :goto_0
    return-void

    .line 921
    :cond_0
    const/high16 v0, -0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 922
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/l;->k:Z

    throw v0

    .line 924
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/support/v4/app/l;->b(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 925
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 928
    iput-boolean v2, p0, Landroid/support/v4/app/l;->k:Z

    goto :goto_0
.end method

.method a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 786
    iget-boolean v0, p0, Landroid/support/v4/app/l;->f:Z

    if-nez v0, :cond_0

    .line 787
    iput-boolean v1, p0, Landroid/support/v4/app/l;->f:Z

    .line 788
    iput-boolean p1, p0, Landroid/support/v4/app/l;->g:Z

    .line 789
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    invoke-virtual {p0}, Landroid/support/v4/app/l;->e()V

    .line 792
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/j;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a_()V
    .locals 0

    .prologue
    .line 237
    invoke-static {p0}, Landroid/support/v4/app/a;->b(Landroid/app/Activity;)V

    .line 238
    return-void
.end method

.method public final a_(I)V
    .locals 2
    .parameter

    .prologue
    .line 855
    iget-boolean v0, p0, Landroid/support/v4/app/l;->i:Z

    if-eqz v0, :cond_1

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/l;->i:Z

    .line 860
    :cond_0
    return-void

    .line 857
    :cond_1
    and-int/lit16 v0, p1, -0x100

    if-eqz v0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 8 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b_()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->i()V

    .line 506
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 659
    invoke-static {p0}, Landroid/support/v4/app/d;->a(Landroid/app/Activity;)V

    .line 666
    :goto_0
    return-void

    .line 665
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->h:Z

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 683
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 685
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-boolean v1, p0, Landroid/support/v4/app/l;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    iget-boolean v1, p0, Landroid/support/v4/app/l;->d:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    iget-boolean v1, p0, Landroid/support/v4/app/l;->e:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    iget-boolean v1, p0, Landroid/support/v4/app/l;->f:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 692
    iget-object v1, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/app/n;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 693
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 694
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/l;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 696
    return-void
.end method

.method e()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    iget-boolean v1, p0, Landroid/support/v4/app/l;->g:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->a(Z)V

    .line 804
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->l()V

    .line 805
    return-void
.end method

.method public f()Landroid/support/v4/app/p;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->c()V

    .line 162
    shr-int/lit8 v0, p1, 0x10

    .line 163
    if-eqz v0, :cond_2

    .line 164
    add-int/lit8 v1, v0, -0x1

    .line 166
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    iget-object v2, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v2, v1}, Landroid/support/v4/e/j;->c(I)V

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/n;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 173
    if-nez v1, :cond_1

    .line 174
    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/j;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/support/v4/app/l;->a_()V

    .line 192
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Landroid/content/res/Configuration;)V

    .line 288
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/Fragment;)V

    .line 298
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {p0}, Landroid/support/v4/app/l;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/l$b;

    .line 302
    if-eqz v0, :cond_0

    .line 303
    iget-object v3, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    iget-object v4, v0, Landroid/support/v4/app/l$b;->c:Landroid/support/v4/e/i;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/n;->a(Landroid/support/v4/e/i;)V

    .line 305
    :cond_0
    if-eqz p1, :cond_2

    .line 306
    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 307
    iget-object v4, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/support/v4/app/l$b;->b:Ljava/util/List;

    :goto_0
    invoke-virtual {v4, v3, v0}, Landroid/support/v4/app/n;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 310
    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/l;->j:I

    .line 313
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 314
    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 315
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v1

    array-length v4, v3

    if-eq v0, v4, :cond_5

    .line 317
    :cond_1
    const-string v0, "FragmentActivity"

    const-string v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    if-nez v0, :cond_3

    .line 328
    new-instance v0, Landroid/support/v4/e/j;

    invoke-direct {v0}, Landroid/support/v4/e/j;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    .line 329
    iput v2, p0, Landroid/support/v4/app/l;->j:I

    .line 332
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->f()V

    .line 333
    return-void

    :cond_4
    move-object v0, v1

    .line 307
    goto :goto_0

    .line 319
    :cond_5
    new-instance v0, Landroid/support/v4/e/j;

    array-length v4, v1

    invoke-direct {v0, v4}, Landroid/support/v4/e/j;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    move v0, v2

    .line 320
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 321
    iget-object v4, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/e/j;->b(ILjava/lang/Object;)V

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    if-nez p1, :cond_1

    .line 341
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 342
    iget-object v1, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {p0}, Landroid/support/v4/app/l;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/n;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 343
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 351
    :goto_0
    return v0

    .line 349
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/j;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/j;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Landroid/support/v4/app/j;->onDestroy()V

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/l;->a(Z)V

    .line 369
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->m()V

    .line 370
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->q()V

    .line 371
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 378
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Landroid/support/v4/app/l;->onBackPressed()V

    .line 384
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Landroid/support/v4/app/j;->onLowMemory()V

    .line 396
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->n()V

    .line 397
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    .line 408
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 416
    const/4 v0, 0x0

    goto :goto_0

    .line 410
    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/n;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 413
    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/n;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 408
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onNewIntent(Landroid/content/Intent;)V

    .line 460
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->c()V

    .line 461
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    .line 430
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->onPanelClosed(ILandroid/view/Menu;)V

    .line 431
    return-void

    .line 427
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/n;->b(Landroid/view/Menu;)V

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 438
    invoke-super {p0}, Landroid/support/v4/app/j;->onPause()V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/l;->d:Z

    .line 440
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/app/l;->b_()V

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->j()V

    .line 445
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 492
    invoke-super {p0}, Landroid/support/v4/app/j;->onPostResume()V

    .line 493
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    invoke-virtual {p0}, Landroid/support/v4/app/l;->b_()V

    .line 495
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->o()Z

    .line 496
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 514
    iget-boolean v0, p0, Landroid/support/v4/app/l;->h:Z

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/l;->h:Z

    .line 516
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 517
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/l;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 519
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/l;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 520
    iget-object v1, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/n;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 523
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/j;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 881
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 882
    if-eqz v0, :cond_1

    .line 883
    add-int/lit8 v0, v0, -0x1

    .line 884
    iget-object v1, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v1}, Landroid/support/v4/app/n;->b()I

    move-result v1

    .line 885
    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    if-lt v0, v1, :cond_2

    .line 886
    :cond_0
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result fragment index out of range: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_1
    :goto_0
    return-void

    .line 890
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 892
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 893
    if-nez v0, :cond_3

    .line 894
    const-string v0, "FragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 897
    :cond_3
    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 481
    invoke-super {p0}, Landroid/support/v4/app/j;->onResume()V

    .line 482
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->d:Z

    .line 484
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->o()Z

    .line 485
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/support/v4/app/l;->e:Z

    if-eqz v0, :cond_0

    .line 541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/l;->a(Z)V

    .line 544
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/l;->c()Ljava/lang/Object;

    move-result-object v1

    .line 546
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->e()Ljava/util/List;

    move-result-object v2

    .line 547
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->s()Landroid/support/v4/e/i;

    move-result-object v3

    .line 549
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 550
    const/4 v0, 0x0

    .line 557
    :goto_0
    return-object v0

    .line 553
    :cond_1
    new-instance v0, Landroid/support/v4/app/l$b;

    invoke-direct {v0}, Landroid/support/v4/app/l$b;-><init>()V

    .line 554
    iput-object v1, v0, Landroid/support/v4/app/l$b;->a:Ljava/lang/Object;

    .line 555
    iput-object v2, v0, Landroid/support/v4/app/l$b;->b:Ljava/util/List;

    .line 556
    iput-object v3, v0, Landroid/support/v4/app/l$b;->c:Landroid/support/v4/e/i;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_0

    .line 568
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 571
    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/l;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    new-array v2, v0, [I

    .line 574
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0}, Landroid/support/v4/e/j;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 576
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->e(I)I

    move-result v0

    aput v0, v2, v1

    .line 577
    iget-object v0, p0, Landroid/support/v4/app/l;->l:Landroid/support/v4/e/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/e/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 575
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 579
    :cond_1
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 580
    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 582
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    invoke-super {p0}, Landroid/support/v4/app/j;->onStart()V

    .line 592
    iput-boolean v0, p0, Landroid/support/v4/app/l;->e:Z

    .line 593
    iput-boolean v0, p0, Landroid/support/v4/app/l;->f:Z

    .line 594
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    iget-boolean v0, p0, Landroid/support/v4/app/l;->c:Z

    if-nez v0, :cond_0

    .line 597
    iput-boolean v1, p0, Landroid/support/v4/app/l;->c:Z

    .line 598
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->g()V

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->c()V

    .line 602
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->o()Z

    .line 604
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->p()V

    .line 608
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->h()V

    .line 609
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->r()V

    .line 610
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->c()V

    .line 468
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 617
    invoke-super {p0}, Landroid/support/v4/app/j;->onStop()V

    .line 619
    iput-boolean v1, p0, Landroid/support/v4/app/l;->e:Z

    .line 620
    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 622
    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->k()V

    .line 623
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 838
    iget-boolean v0, p0, Landroid/support/v4/app/l;->k:Z

    if-nez v0, :cond_0

    .line 839
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/j;->startActivityForResult(Landroid/content/Intent;I)V

    .line 844
    return-void
.end method
