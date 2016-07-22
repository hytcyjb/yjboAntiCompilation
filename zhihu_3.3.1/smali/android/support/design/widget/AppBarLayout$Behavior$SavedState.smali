.class public Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:F

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1120
    new-instance v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState$1;

    invoke-direct {v0}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/c;->a(Landroid/support/v4/os/d;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1102
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    .line 1104
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    .line 1105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    .line 1106
    return-void

    .line 1105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1110
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1114
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1115
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1116
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->b:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1117
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1118
    return-void

    .line 1117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
