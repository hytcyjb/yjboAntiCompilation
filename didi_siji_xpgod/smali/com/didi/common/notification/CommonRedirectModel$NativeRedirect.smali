.class public Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;
.super Ljava/lang/Object;
.source "CommonRedirectModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/notification/CommonRedirectModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeRedirect"
.end annotation


# static fields
.field public static final NATIVE_LINK_TYPE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/didi/common/notification/CommonRedirectModel;

.field public type:I

.field public uiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/didi/common/notification/CommonRedirectModel;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/didi/common/notification/CommonRedirectModel$NativeRedirect;->this$0:Lcom/didi/common/notification/CommonRedirectModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
