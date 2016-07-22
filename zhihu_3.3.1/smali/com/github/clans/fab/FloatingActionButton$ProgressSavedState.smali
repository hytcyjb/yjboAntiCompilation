.class Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;
.super Landroid/view/View$BaseSavedState;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/clans/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:F

.field b:F

.field c:F

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 779
    new-instance v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;

    invoke-direct {v0}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState$1;-><init>()V

    sput-object v0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 743
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 744
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->a:F

    .line 745
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->b:F

    .line 746
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->h:Z

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->c:F

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:I

    .line 749
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:I

    .line 750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:I

    .line 751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    .line 752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->i:Z

    .line 753
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->j:Z

    .line 754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->k:Z

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->l:Z

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->m:Z

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    .line 758
    return-void

    :cond_0
    move v0, v2

    .line 746
    goto :goto_0

    :cond_1
    move v0, v2

    .line 752
    goto :goto_1

    :cond_2
    move v0, v2

    .line 753
    goto :goto_2

    :cond_3
    move v0, v2

    .line 754
    goto :goto_3

    :cond_4
    move v0, v2

    .line 755
    goto :goto_4

    :cond_5
    move v0, v2

    .line 756
    goto :goto_5

    :cond_6
    move v1, v2

    .line 757
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/github/clans/fab/FloatingActionButton$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 740
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 762
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 763
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 764
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 765
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 767
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->i:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->j:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 773
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->k:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 774
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->l:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->m:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionButton$ProgressSavedState;->n:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    return-void

    :cond_0
    move v0, v2

    .line 765
    goto :goto_0

    :cond_1
    move v0, v2

    .line 771
    goto :goto_1

    :cond_2
    move v0, v2

    .line 772
    goto :goto_2

    :cond_3
    move v0, v2

    .line 773
    goto :goto_3

    :cond_4
    move v0, v2

    .line 774
    goto :goto_4

    :cond_5
    move v0, v2

    .line 775
    goto :goto_5

    :cond_6
    move v1, v2

    .line 776
    goto :goto_6
.end method
