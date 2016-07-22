.class Lcom/didi/beatles/upload/BtsPicUploadActivity$1;
.super Ljava/lang/Object;
.source "BtsPicUploadActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/upload/BtsPicUploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$1;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 102
    .local v0, intent:Landroid/content/Intent;
    packed-switch p3, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$1;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v2

    #setter for: Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$002(Lcom/didi/beatles/upload/BtsPicUploadActivity;Ljava/io/File;)Ljava/io/File;

    .line 105
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$1;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    #calls: Lcom/didi/beatles/upload/BtsPicUploadActivity;->dispatchTakePictureIntent()V
    invoke-static {v1}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$100(Lcom/didi/beatles/upload/BtsPicUploadActivity;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$1;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v2

    #setter for: Lcom/didi/beatles/upload/BtsPicUploadActivity;->mOutPutFile:Ljava/io/File;
    invoke-static {v1, v2}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->access$002(Lcom/didi/beatles/upload/BtsPicUploadActivity;Ljava/io/File;)Ljava/io/File;

    .line 109
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsPicUploadActivity$1;->this$0:Lcom/didi/beatles/upload/BtsPicUploadActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/didi/beatles/upload/BtsPicUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
