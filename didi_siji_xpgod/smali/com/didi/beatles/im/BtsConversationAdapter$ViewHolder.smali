.class public Lcom/didi/beatles/im/BtsConversationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BtsConversationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/im/BtsConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field audioPlay:Landroid/widget/ImageView;

.field audioPlaying:Landroid/graphics/drawable/AnimationDrawable;

.field head:Landroid/widget/ImageView;

.field imgMsg:Lx/ImageView;

.field msgLayout:Landroid/widget/RelativeLayout;

.field resend:Lx/ImageView;

.field rootlayout:Landroid/widget/RelativeLayout;

.field sendingPb:Landroid/widget/ProgressBar;

.field textMsg:Lx/TextView;

.field tvTimeStamp:Lx/TextView;

.field tvUnableTip:Lx/TextView;

.field unread:Landroid/widget/ImageView;

.field voiceLayout:Landroid/widget/RelativeLayout;

.field voiceTv:Lx/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
