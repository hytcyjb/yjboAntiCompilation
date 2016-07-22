.class public Lcom/didi/common/ui/webview/WebViewModel;
.super Ljava/lang/Object;
.source "WebViewModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FOOTBAR_FOOD:Ljava/lang/String; = "footbar_food"

.field public static final FOOTBAR_GAME:Ljava/lang/String; = "footbar_game"

.field public static final FOUND:Ljava/lang/String; = "found"

.field public static final LOVE_SHARE:Ljava/lang/String; = "love_share"

.field public static final MENU_BANNER:Ljava/lang/String; = "menu_banner"

.field public static final MENU_GAME:Ljava/lang/String; = "menu_game"

.field public static final SHORTCUT_GAME:Ljava/lang/String; = "shortcut_game"

.field public static final WAIT:Ljava/lang/String; = "wait"

.field private static final serialVersionUID:J = 0x2662e3fa0670866aL


# instance fields
.field public canChangeWebViewTitle:Z

.field public customparams:Ljava/lang/String;

.field public isFromBuiness:Z

.field public isLoadLocalData:Z

.field public isPostBaseParams:Z

.field public isShowCloseView:Z

.field public isSupportCache:Z

.field public mDisableParamsKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

.field public redirectClassName:Ljava/lang/String;

.field public rightDrawableResId:I

.field public rightTextResId:I

.field public shareIconLocal:I

.field public share_content:Ljava/lang/String;

.field public share_icon_url:Ljava/lang/String;

.field public share_title:Ljava/lang/String;

.field public share_url:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 45
    iput-boolean v3, p0, Lcom/didi/common/ui/webview/WebViewModel;->isLoadLocalData:Z

    .line 49
    iput v2, p0, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    .line 50
    iput v2, p0, Lcom/didi/common/ui/webview/WebViewModel;->rightDrawableResId:I

    .line 52
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 57
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    .line 76
    iput v2, p0, Lcom/didi/common/ui/webview/WebViewModel;->shareIconLocal:I

    .line 78
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 80
    iput-boolean v3, p0, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->mDisableParamsKeys:Ljava/util/HashSet;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 91
    const-class v0, Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "isDisableParams"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 45
    iput-boolean v3, p0, Lcom/didi/common/ui/webview/WebViewModel;->isLoadLocalData:Z

    .line 49
    iput v2, p0, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    .line 50
    iput v2, p0, Lcom/didi/common/ui/webview/WebViewModel;->rightDrawableResId:I

    .line 52
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 57
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    .line 76
    iput v2, p0, Lcom/didi/common/ui/webview/WebViewModel;->shareIconLocal:I

    .line 78
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 80
    iput-boolean v3, p0, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->mDisableParamsKeys:Ljava/util/HashSet;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 91
    const-class v0, Lcom/didi/common/ui/webview/WebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    .line 103
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->mDisableParamsKeys:Ljava/util/HashSet;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/didi/common/ui/webview/WebViewModel;->mDisableParamsKeys:Ljava/util/HashSet;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewModel [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoadLocalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isLoadLocalData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightTextResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightDrawableResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->rightDrawableResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSupportCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", canChangeWebViewTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->share_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share_icon_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->share_icon_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share_content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->share_content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->share_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareIconLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->shareIconLocal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPostBaseParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWebViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customparams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redirectClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isShowCloseView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/webview/WebViewModel;->isShowCloseView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
