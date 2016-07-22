.class public Lcom/didi/beatles/upload/BtsPicUploadActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsPicUploadActivity.java"

# interfaces
.implements Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;


# static fields
.field public static final IMAGE_UNSPECIFIED:Ljava/lang/String; = "image/*"

.field private static final REQ_ALBUM_ACTIVITY:I = 0x64

.field private static final REQ_CAMERA_ACTIVITY:I = 0x65

.field private static final REQ_CROP_ACTIVITY:I = 0x66


# instance fields
.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private mCameraFile:Ljava/io/File;

.field private mCancelTextView:Landroid/widget/TextView;

.field private final mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mOtherData:Ljava/lang/String;

.field private mOutPutFile:Ljava/io/File;

.field private final mUploadListener:Lcom/didi/beatles/net/BtsResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/beatles/net/BtsResponseListener",
            "<",
            "Lcom/didi/beatles/model/BtsPicUpload;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadSelect:Landroid/widget/RelativeLayout;

.field private mUploadUrl:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 43
    new-instance v0, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;-><init>(Lcom/didi/beatles/ui/activity/base/BtsWeakHandler$IHandler;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    .line 97
    new-instance v0, Lcom/didi/beatles/upload/BtsPicUploadActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity$1;-><init>(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 119
    new-instance v0, Lcom/didi/beatles/upload/BtsPicUploadActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity$2;-><init>(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity$3;-><init>(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mUploadListener:Lcom/didi/beatles/net/BtsResponseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/beatles/upload/BtsPicUploadActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->dispatchTakePictureIntent()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->isViewValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->isViewValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/upload/BtsPicUploadActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->isViewValid()Z

    move-result v0

    return v0
.end method

.method private dispatchTakePictureIntent()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, takePictureIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "output"

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 66
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->type:Ljava/lang/String;

    .line 67
    const-string v1, "UPLOAD_URL_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mUploadUrl:Ljava/lang/String;

    .line 68
    const-string v1, "DATA_PARAMS_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOtherData:Ljava/lang/String;

    .line 70
    :cond_0
    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    .line 71
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->type:Ljava/lang/String;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;

    .line 73
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->dispatchTakePictureIntent()V

    .line 84
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;

    .line 76
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 77
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 80
    :cond_2
    const v1, 0x7f040005

    const v2, 0x7f040009

    invoke-virtual {p0, v1, v2}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->overridePendingTransition(II)V

    .line 81
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->initView()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 87
    const v1, 0x7f08016e

    invoke-virtual {p0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mListView:Landroid/widget/ListView;

    .line 88
    const v1, 0x7f08016d

    invoke-virtual {p0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mUploadSelect:Landroid/widget/RelativeLayout;

    .line 89
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f03000e

    const v2, 0x7f060001

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 91
    .local v0, mListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    const v1, 0x7f080086

    invoke-virtual {p0, v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCancelTextView:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCancelTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method private uploadPic(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/didi/beatles/helper/BtsDialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 200
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mUploadUrl:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mUploadListener:Lcom/didi/beatles/net/BtsResponseListener;

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOtherData:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/didi/beatles/net/BtsRequest;->driverPicUpload(Ljava/lang/String;Ljava/io/File;Lcom/didi/beatles/net/BtsResponseListener;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 189
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 192
    .local v0, finalPath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->uploadPic(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v7, 0x66

    const/4 v3, -0x1

    .line 139
    sparse-switch p1, :sswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 141
    :sswitch_0
    if-ne p2, v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 143
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 145
    const-string v3, "output"

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v1, v7}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 148
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 149
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mCameraFile:Ljava/io/File;

    invoke-static {v3}, Lcom/didi/common/util/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 153
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto :goto_0

    .line 157
    :sswitch_1
    if-ne p2, v3, :cond_2

    .line 158
    const-class v3, Lcom/didi/beatles/upload/BtsCropActivity;

    invoke-virtual {p3, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    const-string v3, "output"

    iget-object v4, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, p3, v7}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto :goto_0

    .line 166
    :sswitch_2
    if-ne p2, v3, :cond_4

    if-eqz p3, :cond_4

    .line 167
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mUploadSelect:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mUploadSelect:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    :cond_3
    const-string v3, "CROP_PIC_PASS_KEY"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, finalPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    invoke-virtual {v3}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 172
    .local v2, message:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 173
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 174
    iget-object v3, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity;->mHandler:Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;

    invoke-virtual {v3, v2}, Lcom/didi/beatles/ui/activity/base/BtsWeakHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 176
    .end local v0           #finalPath:Ljava/lang/String;
    .end local v2           #message:Landroid/os/Message;
    :cond_4
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto/16 :goto_0

    .line 180
    :sswitch_3
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->finish()V

    goto/16 :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x64 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->initData()V

    .line 61
    return-void
.end method
