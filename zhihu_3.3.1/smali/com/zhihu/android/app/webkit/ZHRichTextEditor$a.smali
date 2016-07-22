.class Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;
.super Lcom/zhihu/android/app/webkit/a;
.source "ZHRichTextEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhihu/android/app/webkit/ZHRichTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

.field private d:Lcom/zhihu/android/app/webkit/ZHRichTextEditor$b;


# direct methods
.method public constructor <init>(Lcom/zhihu/android/app/webkit/ZHRichTextEditor;Lcom/zhihu/android/base/widget/ZHWebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    .line 165
    invoke-direct {p0, p2}, Lcom/zhihu/android/app/webkit/a;-><init>(Lcom/zhihu/android/base/widget/ZHWebView;)V

    .line 166
    return-void
.end method


# virtual methods
.method public a(Lcom/zhihu/android/app/webkit/ZHRichTextEditor$b;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->d:Lcom/zhihu/android/app/webkit/ZHRichTextEditor$b;

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    const-string v1, "setHintText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    const-string v1, "insertImage"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    const-string v1, "appendMention"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    const-string v1, "updateImage"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    const-string v1, "removeImage"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    const-string v1, "generateRichText"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public canLoadImage()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onMentionKeyUp()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->d:Lcom/zhihu/android/app/webkit/ZHRichTextEditor$b;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->d:Lcom/zhihu/android/app/webkit/ZHRichTextEditor$b;

    invoke-interface {v0}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$b;->k()V

    .line 198
    :cond_0
    return-void
.end method

.method public onRichTextGenerated(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->c:Lcom/zhihu/android/app/webkit/ZHRichTextEditor;

    invoke-static {v0}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor;->a(Lcom/zhihu/android/app/webkit/ZHRichTextEditor;)Lcom/zhihu/android/app/webkit/ZHRichTextEditor$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;->b:Lcom/zhihu/android/base/widget/ZHWebView;

    new-instance v1, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a$1;

    invoke-direct {v1, p0, p1}, Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a$1;-><init>(Lcom/zhihu/android/app/webkit/ZHRichTextEditor$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/widget/ZHWebView;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    return-void
.end method

.method public openImage(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 191
    return-void
.end method
