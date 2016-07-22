.class public Lcom/didi/frame/dialog/ShareEditDialog;
.super Lcom/didi/common/base/BaseDialog;
.source "ShareEditDialog.java"


# instance fields
.field private btnCancel:Lx/Button;

.field private btnConfirm:Lx/Button;

.field private canceListener:Landroid/view/View$OnClickListener;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private editContent:Lx/EditText;

.field private imgLogo:Landroid/widget/ImageView;

.field private listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mContent:Ljava/lang/String;

.field private mImgUrl:Ljava/lang/String;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private txtCount:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const v0, 0x7f0c0032

    invoke-direct {p0, p1, v0}, Lcom/didi/common/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 99
    new-instance v0, Lcom/didi/frame/dialog/ShareEditDialog$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/dialog/ShareEditDialog$2;-><init>(Lcom/didi/frame/dialog/ShareEditDialog;)V

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->canceListener:Landroid/view/View$OnClickListener;

    .line 109
    new-instance v0, Lcom/didi/frame/dialog/ShareEditDialog$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/dialog/ShareEditDialog$3;-><init>(Lcom/didi/frame/dialog/ShareEditDialog;)V

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->confirmListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/didi/frame/dialog/ShareEditDialog$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/dialog/ShareEditDialog$4;-><init>(Lcom/didi/frame/dialog/ShareEditDialog;)V

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    .line 44
    invoke-direct {p0}, Lcom/didi/frame/dialog/ShareEditDialog;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->imgLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/dialog/ShareEditDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/frame/dialog/ShareEditDialog;)Lx/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->txtCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/frame/dialog/ShareEditDialog;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->view:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->view:Landroid/view/View;

    const v1, 0x7f08054b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->btnCancel:Lx/Button;

    .line 56
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->view:Landroid/view/View;

    const v1, 0x7f08054c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->btnConfirm:Lx/Button;

    .line 58
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->view:Landroid/view/View;

    const v1, 0x7f080548

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->imgLogo:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->view:Landroid/view/View;

    const v1, 0x7f080549

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/EditText;

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;

    .line 60
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;

    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lx/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->view:Landroid/view/View;

    const v1, 0x7f08054a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->txtCount:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->btnCancel:Lx/Button;

    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog;->canceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->btnConfirm:Lx/Button;

    iget-object v1, p0, Lcom/didi/frame/dialog/ShareEditDialog;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public static stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 165
    const-string v2, "[\t]"

    .line 166
    .local v2, regEx:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 167
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 168
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getEditContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;

    invoke-virtual {v0}, Lx/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/frame/dialog/ShareEditDialog;->setContentView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public setDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "content"
    .parameter "picUrl"

    .prologue
    .line 70
    iput-object p2, p0, Lcom/didi/frame/dialog/ShareEditDialog;->mContent:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/didi/frame/dialog/ShareEditDialog;->mImgUrl:Ljava/lang/String;

    .line 73
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->mImgUrl:Ljava/lang/String;

    new-instance v1, Lcom/didi/frame/dialog/ShareEditDialog$1;

    invoke-direct {v1, p0}, Lcom/didi/frame/dialog/ShareEditDialog$1;-><init>(Lcom/didi/frame/dialog/ShareEditDialog;)V

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetchCallback(Ljava/lang/String;Lcom/didi/common/cache/ImageWorker$ImageloadCallback;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;

    invoke-virtual {v0, p2}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->editContent:Lx/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lx/EditText;->setSelection(I)V

    .line 85
    iget-object v0, p0, Lcom/didi/frame/dialog/ShareEditDialog;->txtCount:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int v1, v1, 0x8c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/didi/frame/dialog/ShareEditDialog;->show()V

    .line 87
    return-void
.end method

.method public setListener(Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/didi/frame/dialog/ShareEditDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 92
    return-void
.end method
